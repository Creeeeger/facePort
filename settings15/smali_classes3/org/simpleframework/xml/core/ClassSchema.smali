.class public final Lorg/simpleframework/xml/core/ClassSchema;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final caller:Lorg/simpleframework/xml/core/Caller;

.field public final factory:Lorg/simpleframework/xml/core/ClassInstantiator;

.field public final primitive:Z

.field public final revision:Lorg/simpleframework/xml/Version;

.field public final section:Lorg/simpleframework/xml/core/Section;

.field public final type:Ljava/lang/Class;

.field public final version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassSchema;->caller:Lorg/simpleframework/xml/core/Caller;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getInstantiator()Lorg/simpleframework/xml/core/ClassInstantiator;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassSchema;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->isPrimitive()Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassSchema;->version:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getText()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassSchema;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassSchema;->type:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "schema for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
