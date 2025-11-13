.class Lorg/simpleframework/xml/core/ElementMapLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementMapLabel.java"


# instance fields
.field private cache:Lorg/simpleframework/xml/core/Expression;

.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private inline:Z

.field private items:[Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementMap;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method private getMap()Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .line 293
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 305
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 332
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getMap()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 164
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {p0}, Lorg/simpleframework/xml/ElementMap;->inline()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 165
    new-instance p0, Lorg/simpleframework/xml/core/CompositeMap;

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/CompositeMap;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/CompositeInlineMap;

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/CompositeInlineMap;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object p0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 202
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependents()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    .line 204
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->items:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 207
    array-length v0, p0

    if-nez v0, :cond_1

    .line 208
    new-instance p0, Lorg/simpleframework/xml/core/ClassType;

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object p0

    .line 210
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 205
    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Unable to determine type for %s"

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 182
    new-instance v1, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 184
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {p0}, Lorg/simpleframework/xml/ElementMap;->empty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 185
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Factory;->getInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 224
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    .line 280
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

    .line 240
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 241
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 242
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->override:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementMapLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->path:Ljava/lang/String;

    .line 267
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 319
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isCollection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isData()Z
    .locals 0

    .line 357
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->data:Z

    return p0
.end method

.method public isInline()Z
    .locals 0

    .line 394
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->inline:Z

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 383
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementMapLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 407
    throw p0
.end method
