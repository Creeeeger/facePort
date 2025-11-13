.class public final Lorg/simpleframework/xml/core/Source;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final engine:Lorg/simpleframework/xml/core/TemplateEngine;

.field public final filter:Lorg/simpleframework/xml/core/TemplateFilter;

.field public final session:Lorg/simpleframework/xml/core/Session;

.field public final strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

.field public final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/TreeStrategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/TemplateFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lorg/simpleframework/xml/core/TemplateFilter;->context:Lorg/simpleframework/xml/core/Source;

    iput-object p2, v0, Lorg/simpleframework/xml/core/TemplateFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    new-instance v1, Lorg/simpleframework/xml/core/TemplateEngine;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    new-instance v2, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    new-instance v2, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iput-object v0, v1, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    iput-object v1, p0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    return-void
.end method

.method public static getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
