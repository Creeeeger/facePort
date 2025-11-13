.class Lorg/simpleframework/xml/core/TextLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "TextLabel.java"


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private data:Z

.field private label:Lorg/simpleframework/xml/Text;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private required:Z

.field private type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    .line 197
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TextLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 125
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance p0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/TextException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->label:Lorg/simpleframework/xml/Text;

    aput-object p0, v0, v1

    const-string p0, "Cannot use %s to represent %s"

    invoke-direct {p1, p0, v0}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TextLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

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

    .line 169
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 237
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isData()Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/TextLabel;->data:Z

    return p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/TextLabel;->required:Z

    return p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 301
    throw p0
.end method
