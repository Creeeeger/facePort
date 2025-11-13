.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    const-string v2, "String"

    const-string v3, "Character"

    const-string v4, "Boolean"

    const-string v5, "Byte"

    const-string v6, "Short"

    const-string v7, "Integer"

    const-string v8, "Long"

    const-string v9, "Float"

    const-string v10, "Double"

    .line 74
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    :goto_0
    :try_start_0
    sget-object v1, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 87
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    const-string v0, ""

    .line 294
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-void
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_e

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    sget-object v1, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 159
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 160
    move-object v1, p0

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 162
    move-object v1, p0

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 163
    :goto_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_4

    .line 164
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 165
    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    .line 166
    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 167
    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    .line 168
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 169
    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    .line 170
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 171
    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    .line 172
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 173
    :cond_8
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    .line 174
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_9
    move-object p0, v1

    goto :goto_1

    .line 176
    :cond_a
    const-class v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 178
    :cond_b
    const-class v1, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 179
    check-cast p0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 180
    :cond_c
    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    :try_start_0
    const-string v1, "clone"

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 188
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :catch_1
    :cond_d
    :goto_1
    return-object p0

    .line 149
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null obj!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 203
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Internal error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 411
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 413
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 416
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 417
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v5, v0

    .line 418
    :goto_1
    array-length v6, v3

    const/4 v7, 0x1

    if-ge v5, v6, :cond_11

    .line 419
    aget-object v6, v3, v5

    .line 420
    aget-object v8, v4, v5

    .line 422
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_2

    goto/16 :goto_2

    .line 425
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 426
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "stringRepresentation"

    .line 427
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v11, "indentation"

    .line 430
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    .line 435
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 436
    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "int"

    .line 437
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    .line 438
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_5
    const-string v9, "short"

    .line 440
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    .line 441
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_6
    const-string v9, "char"

    .line 443
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    .line 444
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_7
    const-string v9, "long"

    .line 446
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    .line 447
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    return v0

    :cond_8
    const-string v9, "boolean"

    .line 449
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    .line 450
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_10

    return v0

    :cond_9
    const-string v9, "double"

    .line 452
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    .line 453
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_10

    return v0

    :cond_a
    const-string v9, "float"

    .line 455
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_10

    .line 456
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_10

    return v0

    .line 459
    :cond_b
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_c

    return v7

    .line 461
    :cond_c
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    return v0

    .line 463
    :cond_d
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    return v0

    .line 465
    :cond_e
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_f

    return v0

    .line 467
    :cond_f
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_10

    return v0

    :catch_0
    move-exception v6

    .line 470
    invoke-static {v6}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_10
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 473
    :cond_11
    const-class v3, Lgov/nist/core/GenericObject;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v7

    .line 476
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 477
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0
.end method
