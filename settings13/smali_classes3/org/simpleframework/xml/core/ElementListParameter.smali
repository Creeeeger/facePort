.class Lorg/simpleframework/xml/core/ElementListParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementListParameter.java"


# instance fields
.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    const/4 p0, 0x0

    .line 166
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 177
    iget p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 154
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isPrimitive()Z
    .locals 0

    .line 201
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 189
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 212
    throw p0
.end method
