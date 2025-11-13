.class public final Lorg/simpleframework/xml/core/Variable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field public final label:Lorg/simpleframework/xml/core/Label;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public final getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    return-object p0
.end method

.method public final getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;

    move-result-object p1

    instance-of v1, p1, Lorg/simpleframework/xml/core/Variable$Adapter;

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/Variable$Adapter;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v0, p0}, Lorg/simpleframework/xml/core/Variable$Adapter;-><init>(Lorg/simpleframework/xml/core/Converter;Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object p0

    return-object p0
.end method

.method public final getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object p0

    return-object p0
.end method

.method public final getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEntry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOverride()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPaths()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object p0

    return-object p0
.end method

.method public final isAttribute()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result p0

    return p0
.end method

.method public final isCollection()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result p0

    return p0
.end method

.method public final isData()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result p0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result p0

    return p0
.end method

.method public final isRequired()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result p0

    return p0
.end method

.method public final isText()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result p0

    return p0
.end method

.method public final isTextList()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result p0

    return p0
.end method

.method public final isUnion()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isUnion()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
