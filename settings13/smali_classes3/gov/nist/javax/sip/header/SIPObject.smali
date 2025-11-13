.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPObject;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v5, v1

    .line 93
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_10

    .line 94
    aget-object v6, v3, v5

    .line 95
    aget-object v7, v4, v5

    .line 97
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v9, v8, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    goto/16 :goto_2

    .line 100
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 101
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "stringRepresentation"

    .line 102
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v11, "indentation"

    .line 105
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 110
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 111
    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "int"

    .line 112
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_5

    .line 113
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_f

    return v1

    :cond_5
    const-string v11, "short"

    .line 115
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 116
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    if-eq v6, v7, :cond_f

    return v1

    :cond_6
    const-string v11, "char"

    .line 118
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 119
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    if-eq v6, v7, :cond_f

    return v1

    :cond_7
    const-string v11, "long"

    .line 121
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 122
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v6, v11, v6

    if-eqz v6, :cond_f

    return v1

    :cond_8
    const-string v11, "boolean"

    .line 124
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 125
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_f

    return v1

    :cond_9
    const-string v11, "double"

    .line 127
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 128
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v11

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    cmpl-double v6, v11, v6

    if-eqz v6, :cond_f

    return v1

    :cond_a
    const-string v11, "float"

    .line 130
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_f

    .line 131
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_f

    return v1

    .line 134
    :cond_b
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_c

    goto :goto_2

    .line 136
    :cond_c
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_d

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_d

    return v1

    .line 138
    :cond_d
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    return v1

    .line 140
    :cond_e
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_f

    return v1

    :catch_0
    move-exception v6

    .line 143
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "accessed field "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "modifier  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "modifier.private  2"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {v6}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    :cond_f
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 149
    :cond_10
    const-class v3, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 399
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
