.class public Lorg/simpleframework/xml/core/Composite$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final composite:Lorg/simpleframework/xml/core/Composite;

.field public final criteria:Lorg/simpleframework/xml/core/Collector;

.field public final schema:Lorg/simpleframework/xml/core/ClassSchema;

.field public final value:Lorg/simpleframework/xml/core/Instance;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Collector;Lorg/simpleframework/xml/core/ClassSchema;Lorg/simpleframework/xml/core/Instance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->criteria:Lorg/simpleframework/xml/core/Collector;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/ClassSchema;

    iput-object p4, p0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite$Builder;->value:Lorg/simpleframework/xml/core/Instance;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite$Builder;->schema:Lorg/simpleframework/xml/core/ClassSchema;

    iget-object v3, v2, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite$Builder;->composite:Lorg/simpleframework/xml/core/Composite;

    invoke-virtual {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/ClassSchema;)V

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, v1, v3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-virtual {v0, p1, v1, v3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite$Builder;->criteria:Lorg/simpleframework/xml/core/Collector;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/Collector;->commit(Ljava/lang/Object;)V

    return-object v1
.end method
