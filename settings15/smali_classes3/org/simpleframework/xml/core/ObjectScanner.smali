.class public final Lorg/simpleframework/xml/core/ObjectScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Scanner;


# instance fields
.field public final builder:Lorg/simpleframework/xml/core/StructureBuilder;

.field public final detail:Lorg/simpleframework/xml/core/Detail;

.field public final scanner:Lorg/simpleframework/xml/core/ClassScanner;

.field public final structure:Lorg/simpleframework/xml/core/Structure;

.field public final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ClassScanner;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    new-instance v2, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object v8, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result v3

    if-eqz v3, :cond_55

    array-length v3, v2

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v12, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v13, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v11, v5, v12, v13}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    iget-object v5, v11, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    iget-object v11, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    sget v12, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->$r8$clinit:I

    iget-object v12, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    array-length v11, v11

    if-ne v11, v13, :cond_9

    new-instance v11, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v11}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lorg/simpleframework/xml/core/Signature;

    iget-object v14, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v13, v14}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    iget-object v5, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    array-length v5, v5

    if-ne v5, v12, :cond_0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_4

    :cond_1
    new-instance v12, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v12}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-virtual {v5, v11, v12, v10}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    invoke-virtual {v11, v10}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_1

    :cond_2
    move v13, v10

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v10

    :goto_2
    if-ge v15, v13, :cond_6

    new-instance v10, Lorg/simpleframework/xml/core/Signature;

    iget-object v9, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v10, v9}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v14, :cond_5

    move-object/from16 v16, v2

    invoke-virtual {v11, v9}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Parameter;

    move/from16 v17, v3

    move-object v3, v2

    check-cast v3, Lorg/simpleframework/xml/core/CacheParameter;

    move-object/from16 v18, v11

    iget-object v11, v3, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    move/from16 v19, v13

    iget-object v13, v10, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    move/from16 v20, v14

    iget-object v14, v3, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v3, v3, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v11, v10, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v11, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x1

    add-int/2addr v9, v2

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v11, v18

    move/from16 v13, v19

    move/from16 v14, v20

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object v1, v5, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Parameter \'%s\' is a duplicate in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v11

    move/from16 v19, v13

    move/from16 v20, v14

    const/4 v2, 0x1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v15, v2

    move-object/from16 v2, v16

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object v11, v12

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Signature;

    iget-object v5, v3, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-nez v5, :cond_7

    iput-object v3, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    :cond_7
    iget-object v5, v1, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_6

    :goto_7
    add-int/2addr v4, v2

    move-object/from16 v2, v16

    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    iput-object v1, v0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    new-instance v1, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    iput-object v1, v0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    iput-object v8, v0, Lorg/simpleframework/xml/core/ClassScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v2

    :goto_8
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    if-eqz v2, :cond_18

    iget-object v4, v0, Lorg/simpleframework/xml/core/ClassScanner;->support:Lorg/simpleframework/xml/core/Support;

    if-eqz v1, :cond_b

    iget-object v4, v4, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v4, v2}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v2

    goto :goto_9

    :cond_b
    iget-object v4, v4, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v4, v2}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getNamespaceList()Lorg/simpleframework/xml/NamespaceList;

    move-result-object v4

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v9, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v4, :cond_d

    invoke-interface {v4}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v4

    array-length v5, v4

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v5, :cond_d

    aget-object v10, v4, v9

    iget-object v11, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_a

    :cond_d
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/MethodDetail;

    iget-object v5, v4, Lorg/simpleframework/xml/core/MethodDetail;->list:[Ljava/lang/annotation/Annotation;

    iget-object v4, v4, Lorg/simpleframework/xml/core/MethodDetail;->method:Ljava/lang/reflect/Method;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v9, :cond_e

    aget-object v11, v5, v10

    instance-of v12, v11, Lorg/simpleframework/xml/core/Commit;

    if-eqz v12, :cond_f

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_f

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    :cond_f
    instance-of v12, v11, Lorg/simpleframework/xml/core/Validate;

    if-eqz v12, :cond_10

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_10

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    :cond_10
    instance-of v12, v11, Lorg/simpleframework/xml/core/Persist;

    if-eqz v12, :cond_11

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_11

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    :cond_11
    instance-of v12, v11, Lorg/simpleframework/xml/core/Complete;

    if-eqz v12, :cond_12

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_12

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    :cond_12
    instance-of v12, v11, Lorg/simpleframework/xml/core/Replace;

    if-eqz v12, :cond_13

    iget-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    if-nez v12, :cond_13

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v12

    iput-object v12, v0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    :cond_13
    instance-of v11, v11, Lorg/simpleframework/xml/core/Resolve;

    if-eqz v11, :cond_14

    iget-object v11, v0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    if-nez v11, :cond_14

    invoke-static {v4}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v11

    iput-object v11, v0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    :cond_14
    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_b

    :cond_15
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    if-nez v3, :cond_16

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object v3

    iput-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    :cond_16
    iget-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    if-nez v3, :cond_17

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v3

    iput-object v3, v0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    :cond_17
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_8

    :cond_18
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v3, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    :cond_19
    iput-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    new-instance v9, Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-direct {v0, v7, v8}, Lorg/simpleframework/xml/core/ExpressionBuilder;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    new-instance v1, Lorg/simpleframework/xml/core/ModelAssembler;

    invoke-direct {v1, v0, v7, v8}, Lorg/simpleframework/xml/core/ModelAssembler;-><init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v1, v9, Lorg/simpleframework/xml/core/StructureBuilder;->assembler:Lorg/simpleframework/xml/core/ModelAssembler;

    new-instance v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    new-instance v1, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v1, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    iput-object v6, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    iput-object v7, v0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    new-instance v10, Lorg/simpleframework/xml/core/TreeModel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v10, v9, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v6}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, v9, Lorg/simpleframework/xml/core/StructureBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    iput-object v6, v9, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    iput-object v8, v9, Lorg/simpleframework/xml/core/StructureBuilder;->support:Lorg/simpleframework/xml/core/Support;

    iput-object v9, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    iput-object v8, v6, Lorg/simpleframework/xml/core/ObjectScanner;->support:Lorg/simpleframework/xml/core/Support;

    iput-object v7, v6, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v1, v0, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-object v3, v0, Lorg/simpleframework/xml/core/StructureBuilder;->assembler:Lorg/simpleframework/xml/core/ModelAssembler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v8, 0x0

    :goto_c
    iget-object v9, v0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v10, v3, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    iget-object v11, v3, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    if-ge v8, v5, :cond_1b

    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v11

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-virtual {v3, v9, v11}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_c

    :cond_1a
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v11, v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Ordered element \'%s\' references an attribute in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1b
    invoke-interface {v1}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_1f

    aget-object v5, v0, v4

    invoke-virtual {v11, v5}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v8

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-interface {v8}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v12

    if-nez v12, :cond_1c

    goto :goto_e

    :cond_1c
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Ordered attribute \'%s\' references an element in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1d
    :goto_e
    invoke-interface {v8}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v12

    if-nez v12, :cond_1e

    iget-object v8, v3, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    iget-object v8, v8, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v9, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v8, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const/4 v5, 0x1

    goto :goto_10

    :cond_1e
    invoke-static {v9, v8}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_f

    :goto_10
    add-int/2addr v4, v5

    goto :goto_d

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    iget-object v3, v6, Lorg/simpleframework/xml/core/ObjectScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Support;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_20

    iget-object v5, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v5, v1, v4}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_11

    :cond_21
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Support;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v4, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v4, v1, v3}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_12

    :cond_23
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    if-nez v3, :cond_3a

    iget-object v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    iget-object v4, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    if-nez v4, :cond_39

    iget-object v4, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Scanner;->getSignatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/simpleframework/xml/core/Signature;

    new-instance v9, Lorg/simpleframework/xml/core/Signature;

    iget-object v10, v8, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    iget-object v11, v8, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    invoke-direct {v9, v10, v11}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V

    iget-object v8, v8, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v8}, Lorg/simpleframework/xml/core/ParameterMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_24
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v3, v10}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v11

    if-eqz v11, :cond_25

    new-instance v12, Lorg/simpleframework/xml/core/CacheParameter;

    invoke-direct {v12, v10, v11}, Lorg/simpleframework/xml/core/CacheParameter;-><init>(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_15

    :cond_25
    move-object v12, v2

    :goto_15
    if-eqz v12, :cond_24

    iget-object v10, v12, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    if-eqz v10, :cond_24

    iget-object v11, v9, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v11, v10, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_26
    new-instance v8, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v8, v9}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    iget-object v9, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    iget-object v5, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v8, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    if-nez v5, :cond_29

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Scanner;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v5

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    if-eqz v5, :cond_28

    new-instance v9, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v9, v5}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    goto :goto_16

    :cond_28
    move-object v9, v2

    :goto_16
    new-instance v5, Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v10, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    invoke-direct {v5, v10, v9, v8}, Lorg/simpleframework/xml/core/ClassInstantiator;-><init>(Ljava/util/List;Lorg/simpleframework/xml/core/SignatureCreator;Lorg/simpleframework/xml/core/Detail;)V

    iput-object v5, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    :cond_29
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v4

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v3, v5}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v9

    move-object v10, v5

    check-cast v10, Lorg/simpleframework/xml/core/CacheParameter;

    if-eqz v9, :cond_35

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v11

    iget-object v12, v10, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    invoke-interface {v11}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-static {v12}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    :cond_2b
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-static {v11}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    :cond_2c
    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    iget-object v12, v10, Lorg/simpleframework/xml/core/CacheParameter;->name:Ljava/lang/String;

    if-eqz v11, :cond_34

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getNames()[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_18
    if-ge v14, v13, :cond_2f

    aget-object v15, v11, v14

    if-ne v15, v12, :cond_2d

    goto :goto_19

    :cond_2d
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v15, 0x1

    add-int/2addr v14, v15

    goto :goto_18

    :cond_2f
    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v11

    if-eq v12, v11, :cond_32

    const-string v13, "Annotation does not match %s for \'%s\' in %s"

    if-eqz v12, :cond_31

    if-eqz v11, :cond_31

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    goto :goto_19

    :cond_30
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v9, v12, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_31
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v9, v12, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_32
    :goto_19
    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v9

    iget-object v10, v10, Lorg/simpleframework/xml/core/CacheParameter;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v11, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v11, v9, v10}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v11

    if-nez v11, :cond_2a

    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    goto/16 :goto_17

    :cond_33
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v10, v9, v12, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Annotation %s does not match %s for \'%s\' in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_34
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array {v9, v12, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Type is not compatible with %s for \'%s\' in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_35
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object v1, v10, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Parameter \'%s\' does not have a match in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_36
    iget-object v4, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v8, v4, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_37

    iget-object v4, v4, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/SignatureCreator;

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    goto :goto_1a

    :cond_37
    const/4 v4, 0x0

    :goto_1a
    iget-object v8, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    iget-object v9, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-eqz v4, :cond_38

    invoke-virtual {v3, v9}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    invoke-virtual {v3, v8}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3, v9, v5}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    invoke-virtual {v3, v8, v5}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    :cond_39
    iget-object v3, v3, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iput-object v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    :cond_3a
    iget-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    iget-object v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v4

    iget-object v5, v1, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v11

    array-length v12, v10

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v12, :cond_3d

    aget-object v14, v10, v13

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v15

    invoke-virtual {v5, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    invoke-interface {v14}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v7

    if-ne v2, v7, :cond_3c

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    invoke-interface {v14}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v7

    if-ne v2, v7, :cond_3b

    const/4 v2, 0x1

    add-int/2addr v13, v2

    move-object/from16 v7, p1

    const/4 v2, 0x0

    goto :goto_1c

    :cond_3b
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Required must be consistent in %s for %s"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3c
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Inline must be consistent in %s for %s"

    filled-new-array {v15, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3d
    move-object/from16 v7, p1

    goto :goto_1b

    :cond_3e
    iget-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    if-eqz v4, :cond_42

    invoke-interface {v4}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v8, :cond_42

    aget-object v10, v7, v9

    invoke-virtual {v2, v10}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object v14

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v12

    iget-object v13, v1, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v12, :cond_3f

    invoke-virtual {v13, v14}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v13

    :cond_3f
    if-eqz v13, :cond_41

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v11

    iget-object v14, v13, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v14, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_40

    :goto_1e
    const/4 v10, 0x1

    goto :goto_1f

    :cond_40
    iget-object v14, v13, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v14, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41

    iget-object v13, v13, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v13, v11, v12}, Lorg/simpleframework/xml/core/ModelMap;->lookup(ILjava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v11

    invoke-virtual {v11}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_41

    goto :goto_1e

    :goto_1f
    add-int/2addr v9, v10

    goto :goto_1d

    :cond_41
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Ordered element \'%s\' missing for %s"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_42
    if-eqz v4, :cond_47

    invoke-interface {v4}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const/4 v12, 0x0

    :goto_20
    if-ge v12, v7, :cond_47

    aget-object v8, v4, v12

    invoke-virtual {v2, v8}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object v13

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v11

    iget-object v14, v1, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v11, :cond_43

    invoke-virtual {v14, v13}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v14

    :cond_43
    if-eqz v14, :cond_45

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Expression;->getLast()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v9

    if-nez v9, :cond_44

    iget-object v9, v14, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_21

    :cond_44
    iget-object v9, v14, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_21

    :cond_45
    move v9, v10

    :goto_21
    if-eqz v9, :cond_46

    const/4 v9, 0x1

    add-int/2addr v12, v9

    goto :goto_20

    :cond_46
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Ordered attribute \'%s\' missing in %s"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_47
    iget-object v2, v1, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/TreeModel;->validate(Ljava/lang/Class;)V

    :cond_48
    iget-object v4, v2, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    if-eqz v4, :cond_49

    goto :goto_22

    :cond_49
    iget-object v4, v2, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    :goto_22
    const-string v7, "Elements used with %s in %s"

    const-string v8, "Paths used with %s in %s"

    if-eqz v4, :cond_4c

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_23

    :cond_4a
    new-instance v1, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4b
    new-instance v1, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4c
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Scanner;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v3

    iput-boolean v3, v1, Lorg/simpleframework/xml/core/StructureBuilder;->primitive:Z

    :cond_4d
    :goto_23
    iget-object v1, v2, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_4e

    goto :goto_24

    :cond_4e
    iget-object v1, v2, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    :goto_24
    if-eqz v1, :cond_53

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v5

    invoke-interface {v5}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v9, Ljava/lang/String;

    if-eq v5, v9, :cond_4f

    goto :goto_25

    :cond_4f
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v5, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Illegal entry of %s with text annotations on %s in %s"

    invoke-direct {v2, v1, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_50
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_51
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_26

    :cond_52
    new-instance v2, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_53
    :goto_26
    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    if-nez v0, :cond_54

    iget-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    new-instance v1, Lorg/simpleframework/xml/core/Structure;

    iget-object v2, v0, Lorg/simpleframework/xml/core/StructureBuilder;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v3, v0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    iget-boolean v4, v0, Lorg/simpleframework/xml/core/StructureBuilder;->primitive:Z

    iget-object v0, v0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/simpleframework/xml/core/Structure;-><init>(Lorg/simpleframework/xml/core/ClassInstantiator;Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Label;Z)V

    iput-object v1, v6, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    :cond_54
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/simpleframework/xml/core/ObjectScanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    return-void

    :cond_55
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Can not construct inner %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V

    return-object v0
.end method

.method public final getCommit()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getComplete()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object p0
.end method

.method public final getInstantiator()Lorg/simpleframework/xml/core/ClassInstantiator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    return-object p0
.end method

.method public final getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    return-object p0
.end method

.method public final getPersist()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getReplace()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getResolve()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getRevision()Lorg/simpleframework/xml/Version;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    const-class v0, Lorg/simpleframework/xml/Version;

    invoke-interface {p0, v0}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/Version;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSection()Lorg/simpleframework/xml/core/Section;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/simpleframework/xml/core/ModelSection;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/TreeModel;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/TreeModel;)V

    return-object v0
.end method

.method public final getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    return-object p0
.end method

.method public final getSignatures()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getText()V
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getValidate()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getVersion()Lorg/simpleframework/xml/core/Label;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPrimitive()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    return p0
.end method

.method public final isStrict()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isStrict()Z

    move-result p0

    return p0
.end method
