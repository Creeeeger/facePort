.class public abstract Lcom/samsung/android/gtscell/data/GtsListBuilder;
.super Ljava/lang/Object;
.source "GtsListBuilder.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TB;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsListBuilder.kt\ncom/samsung/android/gtscell/data/GtsListBuilder\n*L\n1#1,83:1\n*E\n"
.end annotation


# instance fields
.field private final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsListBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Lcom/samsung/android/gtscell/data/GtsListBuilder<",
            "TB;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final add(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITB;)Z"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Lcom/samsung/android/gtscell/data/GtsListBuilder;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TB;>;)",
            "Lcom/samsung/android/gtscell/data/GtsListBuilder<",
            "TB;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final clear()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)I"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsListBuilder$IteratorImpl;-><init>(Lcom/samsung/android/gtscell/data/GtsListBuilder;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITB;)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsListBuilder;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
