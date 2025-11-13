.class public final Lorg/simpleframework/xml/core/LabelKey;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final label:Ljava/lang/Class;

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Class;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/simpleframework/xml/core/LabelKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lorg/simpleframework/xml/core/LabelKey;

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
