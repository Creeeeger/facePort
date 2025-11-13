.class public final Lorg/simpleframework/xml/core/DetailExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final details:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final fields:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final methods:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final override:Lorg/simpleframework/xml/DefaultType;

.field public final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/ConcurrentCache;

    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    return-void
.end method


# virtual methods
.method public final getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 9

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Detail;

    if-nez v1, :cond_9

    new-instance v1, Lorg/simpleframework/xml/core/DetailScanner;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    iput-object v2, v1, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    iput-object p0, v1, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    const/4 p0, 0x1

    iput-boolean p0, v1, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    iput-object p1, v1, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p0, v4

    new-instance v6, Lorg/simpleframework/xml/core/MethodDetail;

    invoke-direct {v6, v5}, Lorg/simpleframework/xml/core/MethodDetail;-><init>(Ljava/lang/reflect/Method;)V

    iget-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v2, p0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    new-instance v6, Lorg/simpleframework/xml/core/FieldDetail;

    invoke-direct {v6, v5}, Lorg/simpleframework/xml/core/FieldDetail;-><init>(Ljava/lang/reflect/Field;)V

    iget-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, v1, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    array-length v2, p0

    :goto_2
    if-ge v3, v2, :cond_8

    aget-object v4, p0, v3

    instance-of v5, v4, Lorg/simpleframework/xml/Namespace;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/simpleframework/xml/Namespace;

    iput-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    :cond_2
    instance-of v5, v4, Lorg/simpleframework/xml/NamespaceList;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move-object v5, v4

    check-cast v5, Lorg/simpleframework/xml/NamespaceList;

    iput-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    :cond_3
    instance-of v5, v4, Lorg/simpleframework/xml/Root;

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    move-object v5, v4

    check-cast v5, Lorg/simpleframework/xml/Root;

    iget-object v6, v1, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-interface {v5}, Lorg/simpleframework/xml/Root;->strict()Z

    move-result v6

    iput-boolean v6, v1, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    iput-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    iput-object v7, v1, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    :cond_5
    instance-of v5, v4, Lorg/simpleframework/xml/Order;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    move-object v5, v4

    check-cast v5, Lorg/simpleframework/xml/Order;

    iput-object v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    :cond_6
    instance-of v5, v4, Lorg/simpleframework/xml/Default;

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    check-cast v4, Lorg/simpleframework/xml/Default;

    invoke-interface {v4}, Lorg/simpleframework/xml/Default;->required()Z

    move-result v5

    iput-boolean v5, v1, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    invoke-interface {v4}, Lorg/simpleframework/xml/Default;->value()Lorg/simpleframework/xml/DefaultType;

    move-result-object v4

    iput-object v4, v1, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v1
.end method
