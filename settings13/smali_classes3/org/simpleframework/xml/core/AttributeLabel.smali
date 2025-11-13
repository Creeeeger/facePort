.class Lorg/simpleframework/xml/core/AttributeLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "AttributeLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Attribute;

.field private name:Ljava/lang/String;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private required:Z

.field private type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 203
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->label:Lorg/simpleframework/xml/Attribute;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 229
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    .line 128
    new-instance v1, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public bridge synthetic getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/AttributeLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 142
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 159
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AttributeLabel;->getName()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-interface {v0, p0}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isAttribute()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 264
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/AttributeLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 289
    throw p0
.end method
