.class public final Lorg/simpleframework/xml/transform/Transformer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cache:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final error:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final matcher:Lorg/simpleframework/xml/transform/DefaultMatcher;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/EmptyMatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->error:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v0, Lorg/simpleframework/xml/transform/DefaultMatcher;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/transform/PrimitiveMatcher;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/transform/DefaultMatcher;->primitive:Lorg/simpleframework/xml/transform/PrimitiveMatcher;

    new-instance v1, Lorg/simpleframework/xml/transform/PackageMatcher;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/transform/DefaultMatcher;->stock:Lorg/simpleframework/xml/transform/PackageMatcher;

    new-instance v1, Lorg/simpleframework/xml/transform/ArrayMatcher;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/ArrayMatcher;-><init>(Lorg/simpleframework/xml/transform/DefaultMatcher;)V

    iput-object v1, v0, Lorg/simpleframework/xml/transform/DefaultMatcher;->array:Lorg/simpleframework/xml/transform/ArrayMatcher;

    iput-object p1, v0, Lorg/simpleframework/xml/transform/DefaultMatcher;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->matcher:Lorg/simpleframework/xml/transform/DefaultMatcher;

    return-void
.end method


# virtual methods
.method public final lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->error:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/simpleframework/xml/transform/Transformer;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/transform/Transform;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/transform/Transformer;->matcher:Lorg/simpleframework/xml/transform/DefaultMatcher;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/transform/DefaultMatcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
