.class public final Lorg/simpleframework/xml/transform/ArrayTransform;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field public final delegate:Lorg/simpleframework/xml/transform/Transform;

.field public final entry:Ljava/lang/Class;

.field public final split:Lorg/simpleframework/xml/transform/StringArrayTransform;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Transform;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    iput-object p1, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    iput-object p2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    iget-object v0, v0, Lorg/simpleframework/xml/transform/StringArrayTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    iget-object v2, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Lorg/simpleframework/xml/transform/Transform;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public final write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->delegate:Lorg/simpleframework/xml/transform/Transform;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/transform/ArrayTransform;->split:Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/transform/StringArrayTransform;->write([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
