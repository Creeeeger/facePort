.class public final Lorg/simpleframework/xml/core/LabelExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cache:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method


# virtual methods
.method public final getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelKey;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/LabelGroup;

    if-nez v1, :cond_5

    instance-of v1, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v1, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {p1, p0}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object p0, p1

    :cond_3
    new-instance p1, Lorg/simpleframework/xml/core/LabelGroup;

    filled-new-array {p0}, [Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {v0, p3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p0

    :cond_5
    return-object v1
.end method

.method public final getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 10

    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/Element;

    const-class v3, Lorg/simpleframework/xml/core/ElementLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    const-class v3, Lorg/simpleframework/xml/core/ElementListLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    const-class v3, Lorg/simpleframework/xml/core/ElementArrayLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    const-class v3, Lorg/simpleframework/xml/core/ElementMapLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementUnion;

    const-class v2, Lorg/simpleframework/xml/Element;

    const-class v3, Lorg/simpleframework/xml/core/ElementUnionLabel;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementListUnion;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    const-class v3, Lorg/simpleframework/xml/core/ElementListUnionLabel;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    const-class v3, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    const-class v3, Lorg/simpleframework/xml/core/AttributeLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/Version;

    const-class v3, Lorg/simpleframework/xml/core/VersionLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v2, Lorg/simpleframework/xml/Text;

    const-class v3, Lorg/simpleframework/xml/core/TextLabel;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    iget-object v1, v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->entry:Ljava/lang/Class;

    const/4 v2, 0x1

    const-class v3, Lorg/simpleframework/xml/stream/Format;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-class v6, Lorg/simpleframework/xml/core/Contact;

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    iget-object v8, v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->label:Ljava/lang/Class;

    iget-object v0, v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v6, v9, v7

    aput-object v8, v9, v2

    aput-object v1, v9, v5

    aput-object v3, v9, v4

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->label:Ljava/lang/Class;

    iget-object v0, v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->type:Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v6, v4, v7

    aput-object v1, v4, v2

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_a
    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    if-eqz p3, :cond_b

    filled-new-array {p1, p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Label;

    return-object p0

    :cond_b
    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Label;

    return-object p0

    :cond_c
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "Annotation %s not supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 6

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    check-cast v0, [Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/annotation/Annotation;

    :goto_0
    array-length v1, v0

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, p1, p2, v4}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v5, v4}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_3
    return-object v2
.end method
