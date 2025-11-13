.class public final Lorg/simpleframework/xml/core/Variable$Adapter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field public final label:Lorg/simpleframework/xml/core/Label;

.field public final reader:Lorg/simpleframework/xml/core/Converter;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Converter;Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public final read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Variable$Adapter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    instance-of v3, v2, Lorg/simpleframework/xml/core/Variable$Adapter;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/simpleframework/xml/core/Variable$Adapter;

    invoke-virtual {v2, p1, p2}, Lorg/simpleframework/xml/core/Variable$Adapter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->label:Lorg/simpleframework/xml/core/Label;

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Element \'%s\' is already used with %s at %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Variable$Adapter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    return-void
.end method
