.class Lorg/simpleframework/xml/core/ElementListLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementListLabel.java"


# instance fields
.field private cache:Lorg/simpleframework/xml/core/Expression;

.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private inline:Z

.field private item:Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementList;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method private getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    .line 181
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Lorg/simpleframework/xml/core/CompositeList;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/CompositeList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1

    .line 184
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveList;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1
.end method

.method private getInlineConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    .line 201
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lorg/simpleframework/xml/core/CompositeInlineList;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/CompositeInlineList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveInlineList;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveInlineList;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 325
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 352
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    invoke-interface {v1}, Lorg/simpleframework/xml/ElementList;->inline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ElementListLabel;->getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ElementListLabel;->getInlineConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object p0

    return-object p0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 239
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependent()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    .line 241
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->item:Ljava/lang/Class;

    if-eqz p0, :cond_1

    .line 244
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 242
    :cond_1
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unable to determine generic type for %s"

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementListLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 219
    new-instance v1, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 221
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->label:Lorg/simpleframework/xml/ElementList;

    invoke-interface {p0}, Lorg/simpleframework/xml/ElementList;->empty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 222
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

    .line 256
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 258
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    .line 311
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

    .line 274
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 275
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 276
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 365
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->override:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    .line 298
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 339
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isCollection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isData()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->data:Z

    return p0
.end method

.method public isInline()Z
    .locals 0

    .line 414
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->inline:Z

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementListLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 427
    throw p0
.end method
