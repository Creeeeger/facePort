.class public final Lorg/simpleframework/xml/core/StructureBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public assembler:Lorg/simpleframework/xml/core/ModelAssembler;

.field public attributes:Lorg/simpleframework/xml/core/LabelMap;

.field public builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field public elements:Lorg/simpleframework/xml/core/LabelMap;

.field public factory:Lorg/simpleframework/xml/core/ClassInstantiator;

.field public primitive:Z

.field public resolver:Lorg/simpleframework/xml/core/InstantiatorBuilder;

.field public root:Lorg/simpleframework/xml/core/TreeModel;

.field public scanner:Lorg/simpleframework/xml/core/Scanner;

.field public support:Lorg/simpleframework/xml/core/Support;

.field public texts:Lorg/simpleframework/xml/core/LabelMap;

.field public version:Lorg/simpleframework/xml/core/Label;


# virtual methods
.method public final process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .locals 4

    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_6
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    iget-object v1, p0, Lorg/simpleframework/xml/core/StructureBuilder;->support:Lorg/simpleframework/xml/core/Support;

    if-eqz v0, :cond_9

    invoke-virtual {v1, p1, p2}, Lorg/simpleframework/xml/core/Support;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    if-nez v2, :cond_8

    iput-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->version:Lorg/simpleframework/xml/core/Label;

    goto :goto_0

    :cond_8
    new-instance p0, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Multiple version annotations in %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_9
    :goto_0
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_e

    invoke-virtual {v1, p1, p2}, Lorg/simpleframework/xml/core/Support;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object p1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v0

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    :goto_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/StructureBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object p0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_2

    :cond_b
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_2
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/TreeModel;->register(Lorg/simpleframework/xml/core/Label;)V

    invoke-virtual {v2, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance p0, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Multiple text annotations in %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_e
    :goto_3
    return-void
.end method

.method public final process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Support;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object p2

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    return-void

    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p2, "Duplicate annotation of name \'%s\' on %s"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final process(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 3

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/StructureBuilder;->register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    :goto_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->resolver:Lorg/simpleframework/xml/core/InstantiatorBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_1
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/TreeModel;->register(Lorg/simpleframework/xml/core/Label;)V

    invoke-virtual {p2, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final register(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;
    .locals 3

    iget-object p0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->root:Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v1, v0}, Lorg/simpleframework/xml/core/TreeModel;->register(ILjava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object p0

    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPath()Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object p1

    goto :goto_0
.end method

.method public final union(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/StructureBuilder;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {v1, p1, p2}, Lorg/simpleframework/xml/core/LabelKey;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/core/LabelKey;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/simpleframework/xml/core/LabelGroup;->list:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/Label;

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "Duplicate annotation of name \'%s\' on %s"

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    return-void
.end method
