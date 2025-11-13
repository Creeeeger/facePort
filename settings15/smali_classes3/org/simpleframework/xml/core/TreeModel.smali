.class public final Lorg/simpleframework/xml/core/TreeModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final attributes:Lorg/simpleframework/xml/core/LabelMap;

.field public final detail:Lorg/simpleframework/xml/core/Detail;

.field public final elements:Lorg/simpleframework/xml/core/LabelMap;

.field public expression:Lorg/simpleframework/xml/core/Expression;

.field public final index:I

.field public list:Lorg/simpleframework/xml/core/Label;

.field public final models:Lorg/simpleframework/xml/core/ModelMap;

.field public final name:Ljava/lang/String;

.field public final order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

.field public final policy:Lorg/simpleframework/xml/core/Policy;

.field public final prefix:Ljava/lang/String;

.field public text:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/ModelMap;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    new-instance v0, Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    iput-object p2, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    iput-object p4, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    iput p5, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    iput-object p3, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isComposite()Z
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_2
    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v1

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {p0, v1, v0}, Lorg/simpleframework/xml/core/ModelMap;->lookup(ILjava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object p0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final register(ILjava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;
    .locals 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ModelMap;->lookup(ILjava/lang/String;)Lorg/simpleframework/xml/core/TreeModel;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/simpleframework/xml/core/TreeModel;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    move-object v1, v0

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/simpleframework/xml/core/ModelList;

    if-nez p3, :cond_0

    new-instance p3, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {p3}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p3, v0}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/TreeModel;)V

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final register(Lorg/simpleframework/xml/core/Label;)V
    .locals 3

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    const-string v1, "Duplicate annotation of name \'%s\' on %s"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Duplicate text annotation on %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    :cond_5
    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_6
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    iget p0, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "model \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validate(Ljava/lang/Class;)V
    .locals 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    :cond_4
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ordered attribute \'%s\' does not exist in %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/ModelList;

    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Label;

    if-nez v2, :cond_a

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ordered element \'%s\' does not exist in %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_a
    :goto_4
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Element \'%s\' is also a path name in %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_c
    :goto_5
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v2, :cond_8

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/TreeModel;

    if-eqz v3, :cond_f

    iget-object v4, v3, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    iget v5, v3, Lorg/simpleframework/xml/core/TreeModel;->index:I

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v2, :cond_10

    invoke-virtual {v3, p1}, Lorg/simpleframework/xml/core/TreeModel;->validate(Ljava/lang/Class;)V

    move v2, v6

    goto :goto_6

    :cond_10
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Path section \'%s[%s]\' is out of sequence in %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_11
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Text annotation %s can not be used with paths in %s"

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Text annotation %s used with elements in %s"

    invoke-direct {v0, p1, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_14
    :goto_7
    return-void
.end method

.method public final validateExpression(Lorg/simpleframework/xml/core/Label;)V
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Path \'%s\' does not match \'%s\' in %s"

    invoke-direct {v1, p1, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    :goto_0
    return-void
.end method
