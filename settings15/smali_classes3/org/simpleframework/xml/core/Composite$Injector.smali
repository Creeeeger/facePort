.class public final Lorg/simpleframework/xml/core/Composite$Injector;
.super Lorg/simpleframework/xml/core/Composite$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/ClassSchema;

    iget-object v3, v2, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    iget-object v4, v0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/ClassSchema;)V

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v1, v5, v6}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4, v1, v5, v3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-virtual {v4, v1, v5, v3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object v1, v2, Lorg/simpleframework/xml/core/ClassSchema;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v2, v1, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, v1, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/SignatureCreator;

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v10, v0, Lorg/simpleframework/xml/core/Composite$Builder;->criteria:Lorg/simpleframework/xml/core/Collector;

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/SignatureCreator;

    iget-object v11, v4, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v12}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iget-object v11, v11, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v11}, Lorg/simpleframework/xml/core/ParameterMap;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/simpleframework/xml/core/Parameter;

    move-object v14, v13

    check-cast v14, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v14, v14, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    if-eqz v14, :cond_1

    invoke-virtual {v12, v14, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lorg/simpleframework/xml/core/Collector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/simpleframework/xml/core/Parameter;

    iget-object v5, v10, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v5, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Variable;

    iget-object v13, v5, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v13

    if-eqz v16, :cond_5

    iget-object v5, v5, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v14, v16

    check-cast v14, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v14, v14, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static {v5}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    :cond_3
    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static {v14}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v14

    :cond_4
    invoke-virtual {v14, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    :goto_3
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    goto :goto_6

    :cond_5
    invoke-interface {v13}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v16, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    iget-object v5, v4, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v11, v6

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/simpleframework/xml/core/Parameter;

    check-cast v13, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v14, v13, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    iget-object v15, v10, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v15, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/simpleframework/xml/core/Variable;

    if-nez v14, :cond_a

    iget-boolean v14, v13, Lorg/simpleframework/xml/core/CacheParameter;->required:Z

    if-eqz v14, :cond_9

    goto :goto_3

    :cond_9
    iget-boolean v13, v13, Lorg/simpleframework/xml/core/CacheParameter;->primitive:Z

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_a
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v13

    goto :goto_4

    :cond_b
    iget-object v5, v4, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v13, v5

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    cmpl-double v5, v11, v6

    if-lez v5, :cond_c

    iget-object v5, v4, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v11, v6

    add-double/2addr v11, v13

    goto :goto_5

    :cond_c
    iget-object v5, v4, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v11, v5

    :goto_5
    move-wide/from16 v17, v11

    :goto_6
    cmpl-double v5, v17, v8

    if-lez v5, :cond_d

    move-object v3, v4

    move-wide/from16 v8, v17

    :cond_d
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_12

    iget-object v1, v3, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    iget-object v4, v3, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    iget-object v4, v3, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Parameter;

    check-cast v4, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v4, v4, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    iget-object v5, v10, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Variable;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    iget-object v2, v3, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    iget-object v3, v2, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v2, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_11
    iget-object v2, v2, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1}, Lorg/simpleframework/xml/core/Collector;->commit(Ljava/lang/Object;)V

    return-object v1

    :cond_12
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object v1, v1, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Constructor not matched for %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
