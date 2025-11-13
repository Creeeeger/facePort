.class public final Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public notVisited:Z

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->notVisited:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->notVisited:Z

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->notVisited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->notVisited:Z

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
