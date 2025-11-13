.class public final Lorg/simpleframework/xml/core/ParameterFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterFactory;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .locals 11

    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/Element;

    const-class v3, Lorg/simpleframework/xml/core/ElementParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    const-class v3, Lorg/simpleframework/xml/core/ElementListParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    const-class v3, Lorg/simpleframework/xml/core/ElementArrayParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    const-class v3, Lorg/simpleframework/xml/core/ElementMapUnionParameter;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementListUnion;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    const-class v3, Lorg/simpleframework/xml/core/ElementListUnionParameter;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementUnion;

    const-class v2, Lorg/simpleframework/xml/Element;

    const-class v3, Lorg/simpleframework/xml/core/ElementUnionParameter;

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    const-class v3, Lorg/simpleframework/xml/core/ElementMapParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    const-class v3, Lorg/simpleframework/xml/core/AttributeParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_b

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v2, Lorg/simpleframework/xml/Text;

    const-class v3, Lorg/simpleframework/xml/core/TextParameter;

    invoke-direct {v0, v3, v2, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    iget-object v1, v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-class v4, Lorg/simpleframework/xml/stream/Format;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_8

    iget-object v8, v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/reflect/Constructor;

    aput-object v10, v9, v7

    aput-object v8, v9, v2

    aput-object v1, v9, v6

    aput-object v4, v9, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v9, v3

    iget-object v0, v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/reflect/Constructor;

    aput-object v8, v3, v7

    aput-object v1, v3, v2

    aput-object v4, v3, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v5

    iget-object v0, v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_9
    iget-object p0, p0, Lorg/simpleframework/xml/core/ParameterFactory;->format:Lorg/simpleframework/xml/stream/Format;

    if-eqz p3, :cond_a

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Parameter;

    return-object p0

    :cond_a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Parameter;

    return-object p0

    :cond_b
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "Annotation %s not supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
