.class public final Lcom/google/common/collect/Iterators$SingletonIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SENTINEL:Ljava/lang/Object;


# instance fields
.field public valueOrSentinel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    sget-object v0, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    sget-object v1, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
