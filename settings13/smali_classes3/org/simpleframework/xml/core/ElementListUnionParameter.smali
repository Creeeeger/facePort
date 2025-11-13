.class Lorg/simpleframework/xml/core/ElementListUnionParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementListUnionParameter.java"


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

    .line 168
    throw p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 179
    iget p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    .line 110
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 156
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isPrimitive()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementListUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 214
    throw p0
.end method
