.class public final Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final myInitialModCount:I

.field public myVisited:Z

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$100(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    return-void
.end method


# virtual methods
.method public final checkCoModification()V
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$300(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ModCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$400(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myVisited:Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->checkCoModification()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->checkCoModification()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->clear()V

    return-void
.end method
