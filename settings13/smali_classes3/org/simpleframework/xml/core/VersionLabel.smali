.class Lorg/simpleframework/xml/core/VersionLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "VersionLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Version;

.field private name:Ljava/lang/String;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private required:Z

.field private type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 199
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->label:Lorg/simpleframework/xml/Version;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    const/4 p0, 0x0

    .line 225
    throw p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/VersionLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 124
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isFloat(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance p0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object p0

    .line 125
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->label:Lorg/simpleframework/xml/Version;

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object v1, v0, p0

    const-string p0, "Cannot use %s to represent %s"

    invoke-direct {p1, p0, v0}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

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
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/VersionLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
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

    .line 184
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 185
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

    .line 154
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    const/4 p0, 0x0

    .line 155
    throw p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getName()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-interface {v0, p0}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 236
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->type:Ljava/lang/Class;

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

    .line 260
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 285
    throw p0
.end method
