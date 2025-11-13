.class public final Lorg/simpleframework/xml/core/ModelSection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Section;


# instance fields
.field public attributes:Lorg/simpleframework/xml/core/LabelMap;

.field public elements:Lorg/simpleframework/xml/core/LabelMap;

.field public final model:Lorg/simpleframework/xml/core/TreeModel;

.field public models:Lorg/simpleframework/xml/core/ModelMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/TreeModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v0, v0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    return-object p0
.end method

.method public final getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Label;

    return-object p0
.end method

.method public final getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v0, v0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    return-object p0
.end method

.method public final getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v0, v0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/ModelList;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/TreeModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_3

    new-instance p0, Lorg/simpleframework/xml/core/ModelSection;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/TreeModel;)V

    return-object p0

    :cond_3
    return-object p1
.end method

.method public final getText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    :goto_0
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/TreeModel;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->iterator()Ljava/util/Iterator;

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
