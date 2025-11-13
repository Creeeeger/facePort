.class Lorg/simpleframework/xml/core/ElementArrayLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementArrayLabel.java"


# instance fields
.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/ElementArray;

.field private name:Ljava/lang/String;

.field private path:Lorg/simpleframework/xml/core/Expression;

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

    .line 156
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    .line 159
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lorg/simpleframework/xml/core/CompositeArray;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/CompositeArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1

    .line 162
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveArray;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveArray;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 257
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 301
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getEntry()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getConverter(Lorg/simpleframework/xml/core/Context;Ljava/lang/String;)Lorg/simpleframework/xml/core/Converter;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/InstantiationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "Type is not an array %s for %s"

    invoke-direct {p1, p0, v1}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 274
    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    .line 177
    new-instance v1, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 179
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->label:Lorg/simpleframework/xml/ElementArray;

    invoke-interface {p0}, Lorg/simpleframework/xml/ElementArray;->empty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 180
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

    .line 194
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 196
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 243
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

    .line 212
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 213
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementArrayLabel;->getName()Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-interface {v0, p0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 288
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isData()Z
    .locals 0

    .line 339
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->data:Z

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/ElementArrayLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 352
    throw p0
.end method
