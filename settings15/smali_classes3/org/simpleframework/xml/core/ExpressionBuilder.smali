.class public final Lorg/simpleframework/xml/core/ExpressionBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cache:Lorg/simpleframework/xml/util/LimitedCache;

.field public final format:Lorg/simpleframework/xml/stream/Format;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/LimitedCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/LimitedCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/util/LimitedCache;

    iget-object p2, p2, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/simpleframework/xml/core/ExpressionBuilder;->cache:Lorg/simpleframework/xml/util/LimitedCache;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Expression;

    if-nez v3, :cond_22

    new-instance v3, Lorg/simpleframework/xml/core/ClassType;

    iget-object v4, v0, Lorg/simpleframework/xml/core/ExpressionBuilder;->type:Ljava/lang/Class;

    invoke-direct {v3, v4}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    new-instance v4, Lorg/simpleframework/xml/core/PathParser;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v5}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v5, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v5}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/ConcurrentCache;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/simpleframework/xml/core/ExpressionBuilder;->format:Lorg/simpleframework/xml/stream/Format;

    iget-object v0, v0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    iput-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    iput-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    iput-object v1, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lorg/simpleframework/xml/core/PathParser;->count:I

    new-array v6, v5, [C

    iput-object v6, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-virtual {v1, v0, v5, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    iget-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v6, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v7, v5, v6

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_21

    const/16 v9, 0x2e

    const/4 v10, 0x1

    if-ne v7, v9, :cond_3

    array-length v7, v5

    if-le v7, v10, :cond_2

    add-int/2addr v6, v10

    aget-char v5, v5, v6

    if-ne v5, v8, :cond_1

    iput v6, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Path \'%s\' in %s has an illegal syntax"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    iget v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/2addr v3, v10

    iput v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    iput v3, v4, Lorg/simpleframework/xml/core/PathParser;->start:I

    :cond_3
    :goto_1
    iget v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v5, v4, Lorg/simpleframework/xml/core/PathParser;->count:I

    const/16 v6, 0x3a

    const/16 v7, 0x5d

    const/16 v9, 0x5b

    const/16 v11, 0x40

    if-ge v3, v5, :cond_19

    iget-boolean v5, v4, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-nez v5, :cond_18

    iget-object v5, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    aget-char v5, v5, v3

    if-eq v5, v8, :cond_17

    const/16 v12, 0x2d

    const/16 v13, 0x5f

    const/4 v14, 0x0

    if-ne v5, v11, :cond_9

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_4
    :goto_2
    iget v5, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v7, v4, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v5, v7, :cond_6

    iget-object v7, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v9, v5, 0x1

    iput v9, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v5, v7, v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    if-eq v5, v13, :cond_4

    if-eq v5, v12, :cond_4

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    if-le v5, v3, :cond_8

    iput-boolean v10, v4, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    sub-int/2addr v5, v3

    new-instance v6, Ljava/lang/String;

    iget-object v7, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v6, v7, v3, v5}, Ljava/lang/String;-><init>([CII)V

    if-lez v5, :cond_7

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move v5, v0

    goto/16 :goto_9

    :cond_8
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    iget-object v1, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Attribute reference in \'%s\' for %s is empty"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    move v5, v0

    :goto_3
    iget v15, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v14, v4, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v15, v14, :cond_13

    iget-object v14, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v0, v15, 0x1

    iput v0, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v14, v15

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v14

    if-nez v14, :cond_12

    if-eq v0, v13, :cond_12

    if-eq v0, v12, :cond_12

    if-ne v0, v6, :cond_a

    goto/16 :goto_6

    :cond_a
    if-ne v0, v11, :cond_b

    iget v0, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v0, v10

    iput v0, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto/16 :goto_7

    :cond_b
    if-ne v0, v9, :cond_10

    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v11, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v11, v10

    aget-char v0, v0, v11

    if-ne v0, v9, :cond_d

    const/4 v0, 0x0

    :goto_4
    iget v9, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v11, v4, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v9, v11, :cond_e

    iget-object v11, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v12, v9, 0x1

    iput v12, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v9, v11, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x30

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_5
    iget-object v9, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v11, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v11, v10

    aget-char v9, v9, v11

    if-ne v9, v7, :cond_f

    iget-object v7, v4, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    iget-object v1, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid index for path \'%s\' in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_10
    if-ne v0, v8, :cond_11

    goto :goto_7

    :cond_11
    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Illegal character \'%s\' in element for \'%s\' in %s"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_12
    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_13
    :goto_7
    new-instance v0, Ljava/lang/String;

    iget-object v7, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v7, v3, v5}, Ljava/lang/String;-><init>([CII)V

    if-lez v5, :cond_15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x0

    if-lez v3, :cond_14

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    :goto_8
    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    :goto_9
    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, v4, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_16

    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move v0, v5

    goto/16 :goto_1

    :cond_17
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    iget-object v1, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid path expression \'%s\' in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_18
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    iget-object v1, v4, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    iget-object v2, v4, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Path \'%s\' in %s references an invalid attribute"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_19
    move v5, v0

    sub-int/2addr v3, v10

    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v10, v0

    if-lt v3, v10, :cond_1a

    iput v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_a

    :cond_1a
    aget-char v0, v0, v3

    if-ne v0, v8, :cond_1b

    iput v3, v4, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_1b
    :goto_a
    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_b
    if-ge v5, v0, :cond_1f

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v12, v4, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v4, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v5, :cond_1c

    iget-object v14, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    iget-boolean v14, v4, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v14, :cond_1d

    if-ne v5, v3, :cond_1d

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1d
    if-eqz v10, :cond_1e

    iget-object v14, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1f
    iget-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v2, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v4

    :cond_21
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Path \'%s\' in %s references document root"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_22
    return-object v3
.end method
