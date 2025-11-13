.class public final Lorg/simpleframework/xml/transform/PackageMatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# virtual methods
.method public final match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const-class p0, Ljava/lang/Boolean;

    if-ne p1, p0, :cond_0

    new-instance v1, Lorg/simpleframework/xml/transform/BooleanTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_1

    new-instance v1, Lorg/simpleframework/xml/transform/IntegerTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_2

    new-instance v1, Lorg/simpleframework/xml/transform/LongTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_3

    new-instance v1, Lorg/simpleframework/xml/transform/DoubleTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_4

    new-instance v1, Lorg/simpleframework/xml/transform/FloatTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_5

    new-instance v1, Lorg/simpleframework/xml/transform/ShortTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_6

    new-instance v1, Lorg/simpleframework/xml/transform/ByteTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    if-ne p1, p0, :cond_7

    new-instance v1, Lorg/simpleframework/xml/transform/CharacterTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/String;

    if-ne p1, p0, :cond_8

    new-instance v1, Lorg/simpleframework/xml/transform/StringTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Class;

    if-ne p1, p0, :cond_9

    new-instance v1, Lorg/simpleframework/xml/transform/ClassTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_9
    :goto_0
    return-object v1

    :cond_a
    const-string v0, "java.util"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-class p0, Ljava/util/Date;

    if-ne p1, p0, :cond_b

    new-instance v1, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_b
    const-class p0, Ljava/util/Locale;

    if-ne p1, p0, :cond_c

    new-instance v1, Lorg/simpleframework/xml/transform/LocaleTransform;

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/LocaleTransform;-><init>()V

    goto :goto_1

    :cond_c
    const-class p0, Ljava/util/Currency;

    if-ne p1, p0, :cond_d

    new-instance v1, Lorg/simpleframework/xml/transform/CurrencyTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_d
    const-class p0, Ljava/util/GregorianCalendar;

    if-ne p1, p0, :cond_e

    new-instance v1, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;

    invoke-direct {v1}, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;-><init>()V

    goto :goto_1

    :cond_e
    const-class p0, Ljava/util/TimeZone;

    if-ne p1, p0, :cond_f

    new-instance v1, Lorg/simpleframework/xml/transform/TimeZoneTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_f
    const-class p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p1, p0, :cond_10

    new-instance v1, Lorg/simpleframework/xml/transform/AtomicIntegerTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_10
    const-class p0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, p0, :cond_11

    new-instance v1, Lorg/simpleframework/xml/transform/AtomicLongTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_11
    :goto_1
    return-object v1

    :cond_12
    const-string v0, "java.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-class p0, Ljava/net/URL;

    if-ne p1, p0, :cond_13

    new-instance v1, Lorg/simpleframework/xml/transform/URLTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_13
    return-object v1

    :cond_14
    const-string v0, "java.io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-class p0, Ljava/io/File;

    if-ne p1, p0, :cond_15

    new-instance v1, Lorg/simpleframework/xml/transform/FileTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_15
    return-object v1

    :cond_16
    const-string v0, "java.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-class p0, Ljava/sql/Time;

    if-ne p1, p0, :cond_17

    new-instance v1, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_17
    const-class p0, Ljava/sql/Date;

    if-ne p1, p0, :cond_18

    new-instance v1, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_18
    const-class p0, Ljava/sql/Timestamp;

    if-ne p1, p0, :cond_19

    new-instance v1, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    :cond_19
    :goto_2
    return-object v1

    :cond_1a
    const-string v0, "java.math"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_1b

    new-instance v1, Lorg/simpleframework/xml/transform/BigDecimalTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_3

    :cond_1b
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_1c

    new-instance v1, Lorg/simpleframework/xml/transform/BigIntegerTransform;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_1c
    :goto_3
    return-object v1

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_1e

    new-instance v1, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    goto :goto_4

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_1f

    new-instance v1, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    :cond_1f
    :goto_4
    return-object v1
.end method
