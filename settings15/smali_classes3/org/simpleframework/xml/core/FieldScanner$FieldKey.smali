.class public final Lorg/simpleframework/xml/core/FieldScanner$FieldKey;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    iget-object v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    iget-object p0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
