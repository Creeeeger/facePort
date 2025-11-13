.class Lorg/simpleframework/xml/core/ElementLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementLabel.java"


# instance fields
.field private cache:Lorg/simpleframework/xml/core/Expression;

.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private expect:Ljava/lang/Class;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Element;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private required:Z

.field private type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 250
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 263
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 166
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance p0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object p0

    .line 169
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    .line 170
    new-instance p0, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object p0

    .line 172
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {v1, p1, v0, p0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 201
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    .line 223
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 291
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->type:Ljava/lang/Class;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p1

    .line 148
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 151
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v0
.end method

.method public isData()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->data:Z

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 331
    throw p0
.end method
